require "bmreports/version"
require 'net/http'
require 'xmlsimple'

module BMReports

  URL = 'http://www.bmreports.com/bsp/additional/soapfunctions.php'

  def systemwarnings
    out = read element: :systemwarnings
  end

  private

  def read(element)
    element = element[:element] if element.is_a? Hash
    xml_data = Net::HTTP.get_response(URI.parse("#{BMReports::URL}?element=#{element}")).body
    XmlSimple.xml_in xml_data
  end

  def read_cached
    
  end

end
