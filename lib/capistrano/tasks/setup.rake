module Capistrano
  class FileNotFound < StandardError
  end
end

namespace :rvm do

  desc 'Check for usable ruby'
  task :test do
    on roles :all do
      within release_path do
        execute :ruby, "-v"
      end
    end
  end

  # after 'deploy:updated', 'deploy:compile_assets'
  # after 'deploy:updated', 'deploy:cleanup_assets'
  # after 'deploy:updated', 'deploy:normalise_assets'
  # after 'deploy:reverted', 'deploy:rollback_assets'

  namespace :setup do
    task :paths do
      on roles :app do
        within release_path do
          execute :ls, "-l"
        end
      end
    end
  end

end
