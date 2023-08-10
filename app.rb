require_relative "lib/comands"

loop do
  include Comands
  puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
  opcion = gets.chomp.to_i
  case
  when opcion == 0 
    puts "Saindo da lista de contatos...\nAté breve!"
    break
  when opcion == 1
    Comands.all_contacts
  when opcion == 2
    Comands.add_contact
  when opcion == 3
    Comands.see_contact
  when opcion == 4
    Comands.edit_contact
  when opcion == 5
    Comands.remove_contact
  else
    puts "Opção inválida!\nPor favor, use uma opção existente."
  end
end