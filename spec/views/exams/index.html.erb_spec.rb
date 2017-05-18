require 'rails_helper'

RSpec.describe "exams/index", type: :view do
  before(:each) do
    assign(:exams, [
      Exam.create!(),
      Exam.create!()
    ])
  end

  it "renders a list of exams" do
    render
  end
end
