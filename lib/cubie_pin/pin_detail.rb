module CubiePin
  module PinDetail

    def self.lookup(pin)
      t = translations[pin.to_s]
      [ pin.to_i, t ]
    end

    def self.find_by_name(name)
      t = translations.detect { |key, t| t[:name].upcase == name.to_s.upcase }
      lookup(t.first)
    end

    def self.find_by_physical(expansion, physical_pin)
      t = translations.detect do |key, t|
        t[:expansion] == expansion.to_i && t[:physical] == physical_pin.to_i
      end
      lookup(t.first)
    end

    def self.translations
      {
        '1' => { :name => 'PG3', :expansion => 1, :physical => 8 },
        '2' => { :name => 'PB19', :expansion => 1, :physical => 7 },
        '3' => { :name => 'PB18', :expansion => 1, :physical => 6 },
        '4' => { :name => 'PG6', :expansion =>  1, :physical =>  13 },
        '5' => { :name => 'PG5', :expansion =>  1, :physical =>  12 },
        '6' => { :name => 'PG4', :expansion =>  1, :physical =>  11 },
        '7' => { :name => 'PG1', :expansion =>  1, :physical =>  10 },
        '8' => { :name => 'PG2', :expansion =>  1, :physical =>  9 },
        '9' => { :name => 'PG0', :expansion =>  1, :physical =>  5 },
        '10' => { :name => 'PH14', :expansion => 1, :physical => 4 },
        '11' => { :name => 'PH15', :expansion => 1, :physical => 2 },
        '12' => { :name => 'PI6', :expansion =>  1, :physical =>  26 },
        '13' => { :name => 'PI5', :expansion =>  1, :physical =>  24 },
        '14' => { :name => 'PI4', :expansion =>  1, :physical =>  22 },
        '15' => { :name => 'PG11', :expansion => 1, :physical => 18 },
        '16' => { :name => 'PG10', :expansion => 1, :physical => 17 },
        '17' => { :name => 'PG9', :expansion =>  1, :physical =>  16 },
        '18' => { :name => 'PG8', :expansion =>  1, :physical =>  15 },
        '19' => { :name => 'PG7', :expansion =>  1, :physical =>  14 },
        '20' => { :name => 'PE8', :expansion =>  1, :physical =>  42 },
        '21' => { :name => 'PE7', :expansion =>  1, :physical =>  40 },
        '22' => { :name => 'PE6', :expansion =>  1, :physical =>  38 },
        '23' => { :name => 'PE5', :expansion =>  1, :physical =>  36 },
        '24' => { :name => 'PE4', :expansion =>  1, :physical =>  34 },
        '25' => { :name => 'PI9', :expansion =>  1, :physical =>  32 },
        '26' => { :name => 'PI8', :expansion =>  1, :physical =>  30 },
        '27' => { :name => 'PI7', :expansion =>  1, :physical =>  28 },
        '28' => { :name => 'PD4', :expansion =>  2, :physical =>  5 },
        '29' => { :name => 'PD3', :expansion =>  2, :physical =>  6 },
        '30' => { :name => 'PD2', :expansion =>  2, :physical =>  3 },
        '31' => { :name => 'PD1', :expansion =>  2, :physical =>  4 },
        '32' => { :name => 'PD0', :expansion =>  2, :physical =>  1 },
        '33' => { :name => 'PE11', :expansion => 1, :physical => 48 },
        '34' => { :name => 'PE10', :expansion => 1, :physical => 46 },
        '35' => { :name => 'PE9', :expansion =>  1, :physical =>  44 },
        '36' => { :name => 'PD12', :expansion => 2, :physical => 16 },
        '37' => { :name => 'PD11', :expansion => 2, :physical => 13 },
        '38' => { :name => 'PD10', :expansion => 2, :physical => 14 },
        '39' => { :name => 'PD9', :expansion =>  2, :physical =>  11 },
        '40' => { :name => 'PD8', :expansion =>  2, :physical =>  12 },
        '41' => { :name => 'PD7', :expansion =>  2, :physical =>  10 },
        '42' => { :name => 'PD6', :expansion =>  2, :physical =>  7 },
        '43' => { :name => 'PD5', :expansion =>  2, :physical =>  8 },
        '44' => { :name => 'PD20', :expansion => 2, :physical => 23 },
        '45' => { :name => 'PD19', :expansion => 2, :physical => 24 },
        '46' => { :name => 'PD18', :expansion => 2, :physical => 21 },
        '47' => { :name => 'PD17', :expansion => 2, :physical => 22 },
        '48' => { :name => 'PD16', :expansion => 2, :physical => 19 },
        '49' => { :name => 'PD15', :expansion => 2, :physical => 17 },
        '50' => { :name => 'PD14', :expansion => 2, :physical => 18 },
        '51' => { :name => 'PD13', :expansion => 2, :physical => 15 },
        '52' => { :name => 'PB2', :expansion =>  2, :physical =>  31 },
        '53' => { :name => 'PD25', :expansion => 2, :physical => 32 },
        '54' => { :name => 'PD24', :expansion => 2, :physical => 29 },
        '55' => { :name => 'PD26', :expansion => 2, :physical => 30 },
        '56' => { :name => 'PD27', :expansion => 2, :physical => 27 },
        '57' => { :name => 'PD23', :expansion => 2, :physical => 28 },
        '58' => { :name => 'PD22', :expansion => 2, :physical => 25 },
        '59' => { :name => 'PD21', :expansion => 2, :physical => 26 },
        '60' => { :name => 'PI11', :expansion => 2, :physical => 47 },
        '61' => { :name => 'PI13', :expansion => 2, :physical => 48 },
        '62' => { :name => 'PI10', :expansion => 2, :physical => 45 },
        '63' => { :name => 'PI12', :expansion => 2, :physical => 46 },
        '64' => { :name => 'PB13', :expansion => 2, :physical => 41 },
        '65' => { :name => 'PB11', :expansion => 2, :physical => 39 },
        '66' => { :name => 'PB10', :expansion => 2, :physical => 40 },
        '67' => { :name => 'PH7', :expansion =>  2, :physical =>  37 },
      }
    end

  end
end
