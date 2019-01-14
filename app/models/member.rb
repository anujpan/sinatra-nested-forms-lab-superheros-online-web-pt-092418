class Member
  attr_accessor :name, :power, :motto
  
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @motto = params[:motto]
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
end