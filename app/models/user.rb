class User < ApplicationRecord
  validates :email, presence: true

  scope :active_users, -> { where(send_status: true) }

  def update_user
    self.message_count += 1
    yaml_message_count

    if self.message_count == yaml_message_count
      self.update(send_status: false)
    end
  end

  private

  def yaml_message_count
    @yaml_message_count ||= YAML.load(File.read('message.yml')).count
  end 
end
