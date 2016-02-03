require 'rails_helper'


describe Student do
  let(:student)	{	FactoryGirl.build	:student	}

  subject {student}

  it{should respond_to(:name)}
  it{should respond_to(:register_number)}
  it{should respond_to(:status)}

  it{should be_valid}
end
