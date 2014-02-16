require 'spec_helper'
require 'bmreports'
include BMReports

describe BMReports do

  # This should be the complete list taken from
  # http://www.bmreports.com/bsp/additional/soapserver.php

  it "read #systemwarnings" do
    stub_request(:get, 'http://www.bmreports.com/bsp/additional/soapfunctions.php').
      with(query: "element=systemwarnings").
      to_return(body: "<systemwarnings></systemwarnings>")
    systemwarnings
  end

  it "read #systemwarningshistoric" do
    stub_request(:get, 'http://www.bmreports.com/bsp/additional/soapfunctions.php').
      with(query: "element=systemwarningshistoric").
      to_return(body: "<SYSWARN_HIST_DATA_SET></SYSWARN_HIST_DATA_SET>")
    systemwarningshistoric
  end

  it "read #nonsossystemwarnings" do
    stub_request(:get, 'http://www.bmreports.com/bsp/additional/soapfunctions.php').
      with(query: "element=nonsosowarnings").
      to_return(body: "<NSWARN_DATA_SET></NSWARN_DATA_SET>")
    nonsosowarnings
  end
  
  it "read #sysmessages" do
    stub_request(:get, 'http://www.bmreports.com/bsp/additional/soapfunctions.php').
      with(query: "element=systemwarnings").
      to_return(body: "<NSWARN_DATA_SET></NSWARN_DATA_SET>")
    sysmessages
  end

  it "read #generationbyfueltypetablehistoric" do
    stub_request(:get, 'http://www.bmreports.com/bsp/additional/soapfunctions.php').
      with(query: "element=generationbyfueltype").
      to_return(body: "<HIST_FUELINST></HIST_FUELINST>")
    generationbyfueltypetablehistoric
  end

  it "read #interconnectorsgraphhistoric" do
    stub_request(:get, 'http://www.bmreports.com/bsp/additional/soapfunctions.php').
      with(query: "element=interconnectorsgraphhistoric").
      to_return(body: "<HIST_FUELHH></HIST_FUELHH>")
    interconnectorsgraphhistoric
  end

  


end
