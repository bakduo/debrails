class Live < ActiveRecord::Base
   attr_accessible :arch, :area, :desktop, :di, :distro, :filesystem, :nombreiso, :repoextra
   validates :arch, :presence => true
   validates :desktop, :presence => true
   validates :distro, :presence => true
   validates :di, :presence => true
   validates :nombreiso, :presence => true
   validates :area, :presence => true
   validates :filesystem, :presence => true
   validates :repoextra, :presence => true
end
