# require 'pp'
class System

  def initialize
    @bodies = []
  end

  def add(celestial_body)
    @bodies << celestial_body
  end

  def bodies
    @bodies
  end

  def total_mass
    @bodies[mass].sum
  end
end

class Body
  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end
end

class Planet < Body
  def initialize(name, mass,day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end

class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end

class Moon < Body
  def initialize(name, mass, planet_orbit, month)
    super(name, mass)
    @planet = planet_orbit
    @month = month
  end
end
solar_system = System.new
earth = Planet.new('Planet Earth', '2929388440', '24', '365')
solar_system.add(earth)
puts solar_system.bodies.inspect
puts "*"*50
moon = Moon.new('Moon', '1231421242', earth, 1)
solar_system.add(moon)
puts solar_system.bodies.inspect
puts "*"*50
sun = Star.new('Sun', '234324', 'G-Star')
solar_system.add(sun)
puts solar_system.bodies.inspect
