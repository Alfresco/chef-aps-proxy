services = ['haproxy']

describe 'Alfresco daemons' do
  services.each do |service|
      it "Has a running #{service} service" do
        expect(service(service)).to be_running
      end
  end
end
