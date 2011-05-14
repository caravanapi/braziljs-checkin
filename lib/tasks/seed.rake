# encoding: ISO-8859-1

namespace :db do
  desc 'Load the seed data from db/seeds.rb'
  task :seed do
    [
      { :title => 'Keynote: An indepth look at one of the most important coming features: modules', :author => 'David Herman', :start_at => DateTime.new(2011,05,13,8) },
      { :title => 'Keynote: Conhecendo o Engine, o servidor Javascript do ERP da UNUM.', :author => 'Marcelo Campos Rocha', :start_at => DateTime.new(2011,05,13,9) },
      { :title => 'Soluções Web para dispositivos da Nokia', :author => 'Izabel Zanforlin', :start_at => DateTime.new(2011,05,13,10,30) },
      { :title => 'Aplicações para iOS com JavaScript e Titanium Mobile', :author => 'Guilherme Chapiewski', :start_at => DateTime.new(2011,05,13,11,15)},
      { :title => 'Lightning Talks: Webapp, já posso investir nisso?', :author => 'Bruno Porkaria' , :start_at => DateTime.new(2011,05,13,13) },
      { :title => 'Lightning Talks: Desenvolvendo Browser Extensions com JavaScript', :author => 'Felipe Rodrigues', :start_at => DateTime.new(2011,05,13,13,15) },
      { :title => 'Lightning Talks: Padrões Javascript e JSHint', :author => 'Leonardo Balter', :start_at => DateTime.new(2011,05,13,13,30) },
      { :title => 'Lightning Talks: Criando Plugins jQuery', :author => 'Ricardo Coelho', :start_at => DateTime.new(2011,05,13,13,45) },
      { :title => 'Aprimorando sua aplicação Java com ExtJS', :author => 'Loiane Groner', :start_at => DateTime.new(2011,05,13,14) },
      { :title => 'Webapp, já posso investir nisso?', :author => 'Bruno Fernandes (Porkaria)', :start_at => DateTime.new(2011,05,13,14,45) },
      { :title => 'Usando Node.js na prática; ou como fiz o Presentta', :author => 'Nando Vieira', :start_at => DateTime.new(2011,05,13,15,30) },
      { :title => 'Canvas Element', :author => 'Davidson Fellipe', :start_at => DateTime.new(2011,05,13,16,45) },
      { :title => 'Introdução e hands-on ao JavascriptMVC, um framework full-stack para javascript', :author => 'Pedro Pimentel', :start_at => DateTime.new(2011,05,13,17,30) },
      { :title => 'Keynote: HTML5 Web Messaging', :author => 'Mike Taylor', :start_at => DateTime.new(2011,05,13,18,45) },
      { :title => 'A diretiva @font-face das CSSmaujor)', :author => 'Maurício Samy Silva (maujor)', :start_at => DateTime.new(2011,05,14,8) },
      { :title => 'Keynote: Tudo de bom com jQuery UI', :author => 'Richard Worth', :start_at => DateTime.new(2011,05,14,9) },

      { :title => 'Realtime Web Applications with Node.JS', :author => 'Emerson Leite ', :start_at => DateTime.new(2011,05,14,10,30) },
      { :title => 'Desenvolvimento indolor com JQuery Mobile', :author => 'Bruno Oliveira ', :start_at => DateTime.new(2011,05,14,11,15) },
      { :title => 'Lightning Talks: Javascript me Odeia?! Fazendo as pazes com javaScript.', :author => 'Abra√£o Alves' , :start_at => DateTime.new(2011,05,14,13) },
      { :title => 'Lightning Talks: Testes em Javascript na prática', :author => 'jlbfalcao', :author => ' Alves' , :start_at => DateTime.new(2011,05,14,13,15) },
      { :title => 'Lightning Talks: Sua WebApp funcionando totalmente offline com Sencha.', :author => 'Christiano Milfont', :author => 'Abraão Alves' , :start_at => DateTime.new(2011,05,14,13,30) },
      { :title => 'Lightning Talks: Descobrindo o CouchDB', :author => 'Henrique Gogó', :start_at => DateTime.new(2011,05,14,13,45) },
      { :title => 'Global é do mal e o temido escopo local - Entendendo como funciona e trabalhando para evitar conflitos mantendo a testabilidade', :author => 'Bruno Mentges de Carvalho', :start_at => DateTime.new(2011,05,14,14) },
      { :title => 'ECMAScript na JVM - unindo o poder da plataforma Java com a Flexibilidade do ECMAScript', :author => 'Douglas Campos', :start_at => DateTime.new(2011,05,14,14,45) },
      { :title => 'Programação Funcional: Novas Fronteiras e Expansã da Mente', :author => 'Andrei Formiga' , :start_at => DateTime.new(2011,05,14,15,30) },
      { :title => 'Capability Based Security: repensando a seguraça com ajuda da linguagem', :author => 'Rafael Ferreira', :start_at => DateTime.new(2011,05,14,16,45) },
      { :title => 'Programando em JS no Android', :author => 'Daniel Passos', :start_at => DateTime.new(2011,05,14,17,30) },
      { :title => 'Keynote Game Development in Javascript', :author => 'Michal Budzynski', :start_at => DateTime.new(2011,05,14,18,15) },
    ].each do |keynote|
      Keynote.create keynote
    end
  end
end
