class CreateMessages < ActiveRecord::Migration[6.0]
  def up
    create_table :messages do |t|
      t.string :name, :entry, :ip_address

      t.timestamps
    end

    5.times do
      Message.create!(
        name: Faker::Name.name,
        ip_address: '192.168.0.1',
        entry: Faker::Lorem.paragraph
      )
    end
  end

  def down
    drop_table :messages
  end
end
