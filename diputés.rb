require 'nokogiri'

require 'open-uri'

require 'rubygems'





def personnes_essayant_de_faire_croire_qu_ils_servent_encore_à_quelque_chose



prison = []





page  = Nokogiri::HTML(open("https://wiki.laquadrature.net/Contactez_vos_d%C3%A9put%C3%A9s"))



mail = page.xpath("//li")[20..680].text







prison << mail



puts prison



end







personnes_essayant_de_faire_croire_qu_ils_servent_encore_à_quelque_chose
