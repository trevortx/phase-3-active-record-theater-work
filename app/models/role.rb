class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.collect {|aud| aud.actor}
  end

  def locations
    self.auditions.collect {|aud| aud.location}
  end

  def lead
    hired = self.auditions.find_by(hired: true)
    if hired != nil
      hired
    else
      "No one hired for that role yet."
    end
  end

  def understudy
    all_hires = self.auditions.where("hired = 't'")
    if all_hires.length > 1
      all_hires[1]
    else
      "No understudy for that role yet."
    end
  end
end