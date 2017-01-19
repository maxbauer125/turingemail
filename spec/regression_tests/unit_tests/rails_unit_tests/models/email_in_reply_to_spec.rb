# == Schema Information
#
# Table name: email_in_reply_tos
#
#  id                     :integer          not null, primary key
#  email_id               :integer
#  in_reply_to_message_id :text
#  position               :integer
#  created_at             :datetime
#  updated_at             :datetime
#

require 'rails_helper'

RSpec.describe EmailInReplyTo, :type => :model do
  let!(:email) { FactoryGirl.create(:email) }

  ###########################
  ### Database Unit Tests ###
  ###########################

  describe "Database" do

    describe "Columns" do
      it { should have_db_column(:email_id).of_type(:integer)  }
      it { should have_db_column(:in_reply_to_message_id).of_type(:text)  }
      it { should have_db_column(:position).of_type(:integer)  }
      it { should have_db_column(:created_at).of_type(:datetime)  }
      it { should have_db_column(:updated_at).of_type(:datetime)  }  
    end

    describe "Indexes" do
      it { should have_db_index([:email_id, :in_reply_to_message_id, :position]).unique(true) }
      it { should have_db_index(:email_id) }
    end

  end

  ##############################
  ### Association Unit Tests ###
  ##############################

  describe "Relationships" do

    describe "Belongs to relationships" do
      it { should belong_to :email }
    end

  end

  #############################
  ### Validation Unit Tests ###
  #############################

  describe "Validations" do

    describe "Presence validations" do
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:in_reply_to_message_id) }
    end

  end

end
