require 'spec_helper'

describe UsersHelper do
  describe "gravatar_for" do
    let (:user) { User.new name: 'Taylor', email: 'taylor@example.com' }
    specify { expect { gravatar_for(user) }.not_to raise_error }
    specify { expect { gravatar_for(user, size: 40) }.not_to raise_error }
  end
end