# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses

    end

    def parse
        #iterate over list of emails and adds to new array
        # this supports both comma and whitespace delimiters 
        delimiter = Regexp.union([", ", " "])
        new = email_addresses.split(delimiter)
        new = new.uniq
    end 
end


# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)
 
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]