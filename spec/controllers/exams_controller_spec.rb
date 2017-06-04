require 'rails_helper'


describe ExamsController do
  let(:exam1){double ("exam1")}
  let(:exam2){double ("exam2")}
  let(:exam3){double ("exam3")}
  let(:exam4){double ("exam4")}
  let(:exam5){double ("exam5")}
  let(:exams){[exam1,exam2,exam3,exam4,exam5]}
  
  describe "#index" do
    it "collects all of the exams" do
      expect(Exam).to receive(:all).and_return(exams)
      get :index
    end
    it "displays all exams" do
      allow(Exam).to receive(:all).and_return(exams)
      get :index
      expect(assigns(:exams)).to eq(exams)
    end
    it "selects the index template for rendering" do
      allow(Exam).to receive(:all).and_return(exams)
      get :index
      expect(response).to render_template("index")
    end
  end
  
  describe "#new" do
    it "selects new template for rendering" do
      get :new 
      expect(response).to render_template("new")
    end
  end
  
  
  
  describe "#create" do
    let(:params) {{:name=>"AS",:description=>"GRE Paper"}}
    let(:exam){double('exam',params)}
    it "create a new exam" do
      expect(Exam).to receive(:create!).and_return(exam)
      post:create,{exam:params}
      #render_template("index")
    end
  end
  
  describe "#destroy" do
    let(:exam){double('exam',:name=>"GRE",:description=>"GREEEEE")}
    let(:id) {'2'}
    it 'calls the find method to retrieve a exam and delete it' do
      expect(Exam).to receive(:find).with(id).and_return(exam)
      allow(exam).to receive(:destroy)
      delete:destroy,{:id=>id}
      render_template("index")
    end
  end
  
  describe "#submit_exam" do
    let(:exam){double('exam',:name=>"GRE",:description=>"GREEEEE")}
    let(:fid) {'2'}
    let(:score){'5'}
    it 'calls the find method to retrieve' do
      expect(Exam).to receive(:find).with(fid).and_return(exam)
      get:submit_exam,{id:fid} 
    end
    it 'makes score available to the template' do
      allow(Exam).to receive(:find).with(fid).and_return(exam)
      get:submit_exam,{id:fid} 
      expect(assigns(:score)).to eq(score)
    end  
  end   

end
