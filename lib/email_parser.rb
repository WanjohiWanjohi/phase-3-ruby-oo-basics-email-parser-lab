require 'pry'
# Build a class EmailAddressParser that
#  accepts a string of unformatted 
# emails. 
# The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end
    def parse
        cleaned_emails = []
        if @emails.include?(",") and @emails.include?(" ")
            all_emails = @emails.split(", ")
            all_emails.each do |email|
                email.split(" ")
            end
        elsif @emails.include? ","
            arr = @emails.split(", ")
            arr = arr.uniq
        elsif @emails.include? " "
            arr = @emails.split(" ")
            arr = arr.uniq
        else 
            arr  = [@emails]
        end
    end
end
