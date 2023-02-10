class CreatePeople < ActiveRecord::Migration[7.0]

    def up
        create_table: :people do |t|
            t.string: fname
            t.string: lname

            t.timestamps
        end
    end

    
    def down
        drop_table :people

    end

end