# solar_system.rb

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_of_planets = "Planets orbiting #{@star_name}"

    @planets.each_with_index do |planet, index|
      list_of_planets += "\n#{index + 1}.  #{planet.name}"
    end

    return list_of_planets
  end

  def find_planet_by_name(planet_name)

    planets_found = @planets.select do |planet|
      if planet.name.downcase == planet_name.downcase
        planet
      end
    end

    if planets_found.empty?
      return "No planet called #{planet_name} found."
    elsif planets_found.length == 1
      return planets_found[0]
    else
      planet_findings = "Multiple planets (found: #{planets_found.length}) with the name #{planet_name} found:"

      planets_found.each_with_index do |planet, index|
        planet_findings += "\n#{index+1}.  #{planet}"
      end
      return planet_findings
    end


    # @planets.each do |planet|
    #   if planet.name.downcase == planet_name.downcase
    #     return planet
    #   end
    # end
    # return "No planet called #{planet_name} found."
  end

end