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
			'Name'           => 'Fake Test Module',
			'Description'    => %q{
				If this module loads, you know you're doing it right.
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
			'Platform'          => [ 'win' ],
			'Targets'        =>
				[
					['Universal', {}]
				],
			'DisclosureDate' => 'Jan 01 1970',
			'DefaultTarget'  => 0))

		register_options(
			[
				OptString.new('FILENAME', [ true, 'The output file name.', 'test.txt'])
			], self.class)

	end

	def exploit

		data = "Hello, world!\r\n"

		# Create the file
		print_status("Test File")


	end

end
