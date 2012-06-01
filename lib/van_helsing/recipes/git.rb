namespace :git do
  task :clone do
    validate_set :repository

    queue %{
      echo "-----> Initializing path #{release_path}"
      mkdir -p "#{release_path}" &&
      git clone "#{repository}" -n "#{release_path}" --recursive --depth 1 &&
      rm -rf "#{curent_path}.git"
    }
  end
end