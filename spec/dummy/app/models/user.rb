class User < ActiveRecord::Base
  devise :database_authenticatable, #:registerable,
    :recoverable, :rememberable, :trackable, # , :validatable
    :lockable, lock_strategy: :none, unlock_strategy: :none

  include EnjuSeed::EnjuUser
  include EnjuCirculation::EnjuUser
end

Manifestation.include(EnjuSubject::EnjuManifestation)
Manifestation.include(EnjuManifestationViewer::EnjuManifestation)
Item.include(EnjuCirculation::EnjuItem)
