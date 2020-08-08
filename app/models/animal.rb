class Animal < ApplicationRecord
  scope :lions, -> { where(race: 'Lion') }
  scope :meerkats, -> { where(race: 'Meerkat') }
  scope :wild_boars, -> { where(race: 'WildBoar') }

  delegate :lions, :meerkats, :wild_boars, to: :animals

  belongs_to :tribe
  self.inheritance_column = :race
  # We will need a way to know which animals
  # will subclass the Animal model
  def self.races
    %w[Lion WildBoar Meerkat]
  end

  def talk
    raise 'Abstract Method'
  end
end
