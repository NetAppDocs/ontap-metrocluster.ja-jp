require 'fileutils'
dest_path = '/tmp/output/pdfs/fullsite-sidebar/'
endpoint = 'https://docs.netapp.com/us-en/ontap-metrocluster/pdfs/fullsite-sidebar/MetroCluster_Documentation.pdf'
ja_path = "#{dest_path}MetroCluster_のドキュメント.pdf"
en_path = "#{dest_path}metrocluster.pdf"
%x[ curl -o #{en_path} #{endpoint} ] unless File.exists?("#{en_path}")
FileUtils.mv(en_path.to_s, ja_path.to_s)
