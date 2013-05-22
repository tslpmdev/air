describe 'A Dog' do
  it 'wags tail when you petted' do
    d = Dog.new
    d.pet.should eq('wags tail')
  end
end
