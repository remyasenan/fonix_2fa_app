module TokenGenerator
  def self.generate
    rand(1000...99999).to_s
  end
end