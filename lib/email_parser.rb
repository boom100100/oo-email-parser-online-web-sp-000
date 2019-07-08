# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  @@emails = []

  def initialize(string)
    @unparsed = string
  end

  def parse
    if @unparsed.match(/,? /) #comma- or space-separated emails
      @@emails = @unparsed.split(/,? /).uniq
    else
      @@emails << @unparsed
    end
  end


end
