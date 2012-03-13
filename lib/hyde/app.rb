require 'rake/file_list'
require 'thor'

module Hyde

  class App < Thor

    desc 'new', 'Generate a site skeleton'
    def new(dir = '.')
      dir = File.expand_path(dir)
      skeleton = File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'skeletons', 'new')

      files = Rake::FileList[File.join(skeleton, '*'), File.join(skeleton, '.*')].exclude(/\.\.?$/)
      FileUtils.mkdir_p dir
      FileUtils.cp_r files, dir

      `git init #{dir}`
      `env GIT_DIR=#{File.join(dir, '.git')} git remote add origin git@server.minmb.se:#{File.basename(dir)}.git`

      puts <<-EOS

      Initialized new app in #{dir}

      Now run:
        bundle install
        bundle exec jekyll --server

      and point your browser to http://localhost:4000

      For maximum justice, install the LiveReload extension for your browser.

      Then, run:
        bundle exec guard

      EOS
    end

  end

end