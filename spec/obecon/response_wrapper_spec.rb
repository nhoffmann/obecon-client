require "spec_helper"

describe Obecon::ResponseWrapper do
  let(:response){'{"result":{"asset":[{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":36476,"height":400,"location":"http://cm-ask.fpr1.obecon.net/9/f/5/9f5f03a5-90c4-4a7f-8546-7d15d654c9c5/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":266},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":25326,"height":258,"location":"http://cm-ask.fpr1.obecon.net/f/5/3/f53168f7-e422-4475-88e4-f5d8f101a02a/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":9430,"height":258,"location":"http://cm-ask.fpr1.obecon.net/1/0/d/10d01705-a1ed-4a59-abd7-e7abca33f6c9/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":26356,"height":258,"location":"http://cm-ask.fpr1.obecon.net/6/d/d/6ddd0443-4338-4ee4-9855-08dc331e0927/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":34873,"height":400,"location":"http://cm-ask.fpr1.obecon.net/c/3/c/c3cfa4ec-1c17-4d0b-9093-798df73b2f18/filmplakat.jpg","mime":"image/jpeg","slot":"filmplakat","uuid":"--","width":283},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":23098,"height":258,"location":"http://cm-ask.fpr1.obecon.net/f/2/0/f2013f23-df10-406c-a780-f55aefb4f13b/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":137403,"height":344,"location":"http://cm-ask.fpr1.obecon.net/7/9/e/79e80a56-6ed2-495d-b2f4-dc13565cd49d/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":15942,"height":258,"location":"http://cm-ask.fpr1.obecon.net/9/9/a/99a4a36f-9b3d-4892-966c-b1f31d635f36/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":8175,"height":258,"location":"http://cm-ask.fpr1.obecon.net/e/7/8/e78cb561-835b-493c-b8b0-b3098e7f6749/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":20234,"height":258,"location":"http://cm-ask.fpr1.obecon.net/8/7/0/870e6bce-cf74-4e95-ac34-d2fcfd9a8864/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":32062,"height":258,"location":"http://cm-ask.fpr1.obecon.net/4/f/b/4fb1f805-1cf4-441a-8f5d-b0917c38d527/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":16238,"height":258,"location":"http://cm-ask.fpr1.obecon.net/5/5/5/555cef33-3a61-4bba-b097-9abbe6030f38/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":29572,"height":344,"location":"http://cm-ask.fpr1.obecon.net/0/c/f/0cf83821-0a1b-43df-89b9-b1f89a571fa9/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":8660,"height":258,"location":"http://cm-ask.fpr1.obecon.net/b/7/6/b76f8acd-6d8c-4613-b082-13ca3ab1dc10/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":30385,"height":400,"location":"http://cm-ask.fpr1.obecon.net/e/a/7/ea77e98b-16df-4281-a763-1ba0f78ae79a/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":403},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":51900,"height":344,"location":"http://cm-ask.fpr1.obecon.net/4/7/b/47b5155f-5916-4cd5-8f01-83b7513831b3/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":24978,"height":258,"location":"http://cm-ask.fpr1.obecon.net/f/f/d/ffdf5085-61b8-4bb6-86d9-76fc32183260/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":10421,"height":258,"location":"http://cm-ask.fpr1.obecon.net/1/b/1/1b10e4d5-f445-4e1b-9652-e1d7c2d4fcca/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":82586,"height":344,"location":"http://cm-ask.fpr1.obecon.net/9/0/9/9091524b-8cea-4685-9f90-fbb05097e573/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":23136,"height":258,"location":"http://cm-ask.fpr1.obecon.net/d/5/4/d54bb664-f7d4-4be2-ba73-b79c2b79ae02/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":14999,"height":258,"location":"http://cm-ask.fpr1.obecon.net/3/5/0/350f176a-3781-49f1-9da5-c696b6ef4dc9/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":24148,"height":258,"location":"http://cm-ask.fpr1.obecon.net/3/2/0/320dfefe-c404-481f-a185-fb57a0df42ec/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":24727,"height":257,"location":"http://cm-ask.fpr1.obecon.net/7/1/e/71e1a3d0-6a0d-415a-9a0b-9c729331de26/splashimage.jpg","mime":"image/jpeg","slot":"splash","uuid":"--","width":456},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":29842,"height":258,"location":"http://cm-ask.fpr1.obecon.net/5/9/1/591693af-ba3f-4605-aa19-625faf29d28e/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":9581,"height":258,"location":"http://cm-ask.fpr1.obecon.net/e/c/6/ec6f84c0-dcd3-40ed-985f-e5b4fd60d81f/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":32272,"height":258,"location":"http://cm-ask.fpr1.obecon.net/1/9/1/19124551-96a5-4cbf-a112-d5fce9bc7409/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":5063,"height":101,"location":"http://cm-ask.fpr1.obecon.net/7/a/5/7a51e0f8-ebfd-4f02-92c6-fcd99f747f52/filmbild.jpg","mime":"image/jpeg","slot":"filmbild","uuid":"--","width":180},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":31736,"height":258,"location":"http://cm-ask.fpr1.obecon.net/7/8/9/7895bab6-769b-4f67-b298-3f146a18694c/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":13463,"height":258,"location":"http://cm-ask.fpr1.obecon.net/5/9/d/59dbed5d-6ce7-4e08-8350-a7c9a7aa8185/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":48492,"height":344,"location":"http://cm-ask.fpr1.obecon.net/7/a/a/7aa39b00-3f9d-4b59-ae74-d36ac67eb89a/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":33050,"height":258,"location":"http://cm-ask.fpr1.obecon.net/5/5/6/556b09d6-5c26-4bc0-901b-b234178b770c/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":17092,"height":258,"location":"http://cm-ask.fpr1.obecon.net/1/a/0/1a0b6884-6600-4b99-8bd0-512a784c91b4/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":55627,"height":367,"location":"http://cm-ask.fpr1.obecon.net/1/d/5/1d54c660-0985-4b35-a826-f1c324ba40c1/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":31282,"height":258,"location":"http://cm-ask.fpr1.obecon.net/3/4/7/347b49f7-573d-4fe7-895a-bf1852128a35/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":23156,"height":258,"location":"http://cm-ask.fpr1.obecon.net/6/d/1/6d12fd16-0147-459f-88cb-54eed8762876/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":27073,"height":258,"location":"http://cm-ask.fpr1.obecon.net/b/7/4/b741502f-e9ff-49cd-a6b9-79ee9912bae1/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":19288,"height":258,"location":"http://cm-ask.fpr1.obecon.net/a/e/d/aeddc947-312f-4c3d-8933-ad91c9a73da4/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":21777,"height":258,"location":"http://cm-ask.fpr1.obecon.net/5/7/3/5730dad9-7064-48aa-8aa1-b5f70741cffa/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":25567,"height":258,"location":"http://cm-ask.fpr1.obecon.net/8/b/9/8b9ef4ea-381a-4755-9014-911224bcbb0d/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":30261,"height":258,"location":"http://cm-ask.fpr1.obecon.net/7/f/5/7f563214-b08a-44ea-bc49-f15272dff6ae/fotostrecke.jpg","mime":"image/jpeg","slot":"fotostrecke","uuid":"--","width":459},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":9856178,"height":340,"location":"http://cm-ask.fpr1.obecon.net/9/f/2/9f295b55-170b-49bb-bea1-17729d03fbf0/video_hq.flv","mime":"video/x-flv","slot":"video_hq","uuid":"--","width":456},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":17419378,"height":512,"location":"http://cm-ask.fpr1.obecon.net/2/d/1/2d158625-cfcc-4b65-95b2-85bdcbc64118/video.mp4","mime":"video/mp4","slot":"video_mp4","uuid":"--","width":640},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":2052465,"height":132,"location":"http://cm-ask.fpr1.obecon.net/8/0/1/8015aae3-19b9-4771-a7e9-7dc48ca3bcd1/video_lq.flv","mime":"video/x-flv","slot":"video_lq","uuid":"--","width":180},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":17463129,"height":512,"location":"http://cm-ask.fpr1.obecon.net/a/7/1/a712f922-637c-46bc-a5fb-418873c8c7d0/video.mp4","mime":"video/mp4","slot":"video_mp4","uuid":"--","width":640},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":9852838,"height":340,"location":"http://cm-ask.fpr1.obecon.net/6/a/e/6aef314d-908a-4ace-ba66-7a284c40fa01/video_hq.flv","mime":"video/x-flv","slot":"video_hq","uuid":"--","width":456},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":4810529,"height":132,"location":"http://cm-ask.fpr1.obecon.net/b/9/2/b929a057-b06f-407e-acfa-58823f2947a9/video_mq.flv","mime":"video/x-flv","slot":"video_mq","uuid":"--","width":180},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":4812937,"height":132,"location":"http://cm-ask.fpr1.obecon.net/d/4/2/d4208f01-a067-4084-ad0f-956f4baeb301/video_mq.flv","mime":"video/x-flv","slot":"video_mq","uuid":"--","width":180},{"caption":"","copyright":"Universal Pictures International Germany GmbH (UPI)","filesize":2053214,"height":132,"location":"http://cm-ask.fpr1.obecon.net/7/8/b/78bc6635-b077-4c6b-833d-f80112516b3a/video_lq.flv","mime":"video/x-flv","slot":"video_lq","uuid":"--","width":180}]}}'}

  subject{Obecon::ResponseWrapper.new(response)}

  describe "#gallery" do
    it "returns an array" do
      expect(subject.gallery).to be_an_instance_of(Array)
    end
    it "contains Asset Objects" do
      expect(subject.gallery.first).to be_an_instance_of(Obecon::Asset)
    end
  end

  describe "#poster" do
    it "returns an Asset" do
      expect(subject.poster).to be_an_instance_of(Obecon::Asset)
    end
  end

  describe "#map_by_slots" do
    let(:asset_1){ {"slot" => "filmplakat"} }
    let(:asset_2){ {"slot" => "teaser"} }
    it "maps assets by slot" do
      expect(subject.send(:map_by_slots, [asset_1, asset_2])).to eq({ filmplakat: [asset_1], teaser: [asset_2] })
    end
  end
end
