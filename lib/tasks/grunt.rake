# Wrap front-end task runner under rake
namespace :grunt do
  desc "Deploy the minified version of the checked-out front-end to public/"
  task :deploy do
    # Doesn't work because of non-global nvm controlled NodeJS
    #system "cd app/appideas-front && grunt build"
    FileUtils.cp_r 'app/appideas-front/dist/', 'public/'
  end
end
