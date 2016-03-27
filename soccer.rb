class Game
	attr_accessor :cup
	def initialize(competition)
		@cup = competition
	end
end

class Team
	attr_accessor :name
	def initialize(team_name)
		@name = team_name
	end

	def startxi(player) #ART what is wrong with this method?
		@starters = []
		#@starters << Player.name(player)
	end
end

class Player
	attr_accessor :name, :nickname, :jersey, :position
	def initialize(player_name, nickname, jersey, position)
		@name = player_name
		@nickname = nickname
		@jersey = jersey
		@position = position
	end

	def on_ball
		puts "#{self.name} is on the ball"
	end

	def dribble
		puts "#{@name} dribbles the ball downfield."
	end

	def shoot(hit_miss)
		if hit_miss == true
			hit_miss = "GOOAAALLLLLLL!!!"
		else
			hit_miss = "it's a miss!"
		end
		puts "#{@name} shoots... #{hit_miss}"
	end

	def pass(receiver) #passes to a new player
		puts "#{@name} passes the ball to #{receiver}"
		@has_ball = receiver
		#receiver.receives(ball)
		#self.has_ball = nil
	end
	def receive(ball)
		if self.has_ball == nil #when u pass it it should be nil / boolean if receiver doesn't have the ball
			self.ball = true # when u receive it it becomes true
		end
		ball.dribbler = self #reassigning ball to receiving player
		puts "#{self.name} receives the pass"
	end
end


class Commentators
	def dribble
		puts "#{Player.dribble} dribbles the ball downfield."
	end
	def passes(receiver)
		puts "#{@name} passes the ball to #{receiver}"
	end
end

trophy = Game.new("Champions League")
puts "Welcome to the #{trophy.cup} finals"

barca = Team.new("FC Barcelona")

puts "#{barca.name} have a big task ahead of them"

stegen = Player.new("Marc-Andre Ter Stegen", "\"El aleman\"", "#1", "GK") #why can't I .to_s
pique = Player.new("Gerard Pique Bernabeu", "\"Piquenbauer\"", "#3", "CB")
rakitic = Player.new("Ivan Rakitic", "\"Roketic\"", "#4", "MF")
busquets = Player.new("Sergio Busquets Burgos", "\"Busi\"", "#5", "MF")
alves = Player.new("Daniel Alves da Silva", "\"Dani\"", "#6", "RB")
iniesta = Player.new("Andres Iniesta Lujan", "\"Cabe\"", "#8", "MF")
suarez = Player.new("Luis Alberto Suarez Diaz", "\"El Pistolero\"", "#9", "ST")
messi = Player.new("Lionel Andres Messi", "\"La Pulga\"", "#10", "RW")
neymar = Player.new("Neymar da Silva Santos Junior", "\"Juninho\"", "#11", "LW")
mascherano = Player.new("Javier Alejandro Mascherano", "\"El jefecito\"", "#14", "CB")
alba = Player.new("Jordi Alba", "\"Maquinilla\"", "#18", "LB")

puts "Today's starting eleven are #{@team}" #how to input my team?

messi.on_ball
messi.dribble
messi.pass(neymar.name)
neymar.dribble
neymar.pass(suarez.name)
suarez.shoot(true)

puts "BARCELONA 1 - 0 REAL MADRID"
puts "game restarts at center circle"
rakitic.on_ball
rakitic.pass(busquets.name)
busquets.pass(iniesta.name)
iniesta.pass(neymar.name)
neymar.dribble
neymar.pass(iniesta.name)
iniesta.pass(neymar.name)
iniesta.pass(suarez.name)
suarez.pass(messi.name)
messi.shoot(true)

#how to add Team2 - Real Madrid?
#how to add variations in player movmenet descriptions
#how to push all puts to commentary class
#how to create a team array

