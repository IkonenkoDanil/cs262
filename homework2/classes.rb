class CustomFile < File

    def initialize; end

    def self.my_absolute_path(file_name) 

        parent_count = 0
        while file_name.start_with?("../")
            file_name.delete_prefix!("../")
            parent_count += 1
        end

        base_path = __dir__
        for i in 1..parent_count
            slash_index = base_path.rindex("/")
            if slash_index == nil
                break
            end
            base_path = base_path[0..slash_index-1]
        end

        return base_path + "/" + file_name
    end

    def self.absolute_path(file_name)
        super
    end
    

end

puts "\nRelative path: foo.txt"
puts CustomFile.my_absolute_path("foo.txt")
puts CustomFile.absolute_path("foo.txt")

puts "\nRelative path: ../bar.txt"
puts CustomFile.my_absolute_path("../bar.txt")
puts CustomFile.absolute_path("../bar.txt")

puts "\nRelative path: ../../baz.txt"
puts CustomFile.my_absolute_path("../../baz.txt")
puts CustomFile.absolute_path("../../baz.txt")

puts "\nRelative path: ../../../../"
puts CustomFile.my_absolute_path("../../../../")
puts CustomFile.absolute_path("../../../../")
