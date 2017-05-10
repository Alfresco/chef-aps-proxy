services = ['haproxy']

describe 'Check if haproxy is running' do
  services.each do |service|
    it "Has a running #{service} service" do
      expect(service(service)).to be_running
    end
  end
end
