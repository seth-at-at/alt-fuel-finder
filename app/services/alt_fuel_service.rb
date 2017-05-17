class AltFuelService
  def self.api_request
    HTTParty.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=#{ENV["auth_key"]}")
  end

  def self.search_url(zip)
    JSON.parse("http://www.afdc.energy.gov/locator/stations/results?utf8=%E2%9C%93&location=#{zip}&fuel=ELEC&private=false&planned=false&owner=all&radius=false&radius_miles=6&ev_levels%5B%5D=none&ev_levels%5B%5D=1&ev_levels%5B%5D=2&ev_levels%5B%5D=dc_fast&ev_connectors%5B%5D=none&ev_connectors%5B%5D=NEMA1450&ev_connectors%5B%5D=NEMA515&ev_connectors%5B%5D=NEMA520&ev_connectors%5B%5D=J1772&ev_connectors%5B%5D=CHADEMO&ev_connectors%5B%5D=J1772COMBO&ev_connectors%5B%5D=TESLA&ev_connectors%5B%5D=all&ev_networks%5B%5D=none&ev_networks%5B%5D=AeroVironment+Network&ev_networks%5B%5D=Blink+Network&ev_networks%5B%5D=ChargePoint+Network&ev_networks%5B%5D=EV+Connect&ev_networks%5B%5D=eVgo+Network&ev_networks%5B%5D=GE+WattStation&ev_networks%5B%5D=Greenlots&ev_networks%5B%5D=OpConnect&ev_networks%5B%5D=SemaCharge+Network&ev_networks%5B%5D=Tesla&ev_networks%5B%5D=all")
  end

  # def request_parse(input)
  #   JSON.parse(input)
  # end
end
