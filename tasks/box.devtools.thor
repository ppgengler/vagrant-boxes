class Box < Thor
  include Thor::Actions

  desc 'devtools <BOX>', 'Create a devtools box'

  def devtools(box)
    [
      "vagrant up #{box}",
      "vagrant package #{box} --output #{box}-$(date +%s).box"
    ].each do |cmd|
      run cmd
    end
  end

end