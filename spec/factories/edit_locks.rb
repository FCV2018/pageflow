# Read about factories at https://github.com/thoughtbot/factory_girl

module Pageflow
  FactoryGirl.define do
    factory :edit_lock, :class => EditLock do
      user nil
      entry { build(:entry) }
      updated_at { Time.now }
    end
  end
end
