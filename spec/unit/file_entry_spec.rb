require File.expand_path('../../spec_helper',__FILE__)

describe BrowseEverything::FileEntry do
  let(:mtime) { Time.now }
  subject { 
    BrowseEverything::FileEntry.new(
      'file_id_01234', 'my_provider:/location/pa/th/file.m4v',
      'file.m4v', '1.2 GB', mtime, false
    )
  }

  it "should be a BrowseEverything::FileEntry" do
    expect(subject).to be_a BrowseEverything::FileEntry                     
  end

  it "#id" do
    expect(subject.id).to eq("file_id_01234")
  end

  it "#location" do
    expect(subject.location).to eq("my_provider:/location/pa/th/file.m4v")
  end

  it "#name" do
    expect(subject.name).to eq("file.m4v")
  end

  it "#size" do
    expect(subject.size).to eq("1.2 GB")
  end

  it "#mtime" do
    expect(subject.mtime).to eq(mtime)
  end

  it "#type" do
    expect(subject.type).to eq("video/mp4")
  end

  it "#container?" do
    expect(subject.container?).to be_false                                  
  end

end