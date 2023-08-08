@contacts = [
  {name: 'José', phone: '999991111'},
  {name: 'Henrique', phone: '999992222'}
]

def all_contacts
  puts "Sua lista de contatos:"
  @contacts.each do |contact|
    puts "#{contact[:name]} - #{contact[:phone]}"
  end
  puts "---------------------------"
end

def add_contact
  print "Nome: "
  name = gets.chomp
  print "Telefone: "
  phone = gets.chomp

  @contacts << {name: name, phone: phone}
end

def see_contact
  print "Qual contato você procura? "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      puts "#{contact[:name]} - #{contact[:phone]}"
      break
    end
  end
  puts "---------------------------"
end

def edit_contact
  print "Qual contato deseja editar? "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase.include?(name.downcase)
      print "Novo nome: \n(Caso queira manter o nome, deixe em branco e aperte Enter)"
      save_name = contact[:name]

      contact[:name] = gets.chomp
      contact[:name] = contact[:name].empty? ? save_name : contact[:name]

      print "Novo telefone: \n(Caso queira manter o telefone, deixe em branco e aperte Enter)"
      save_phone = contact[:phone]

      contact[:phone] = gets.chomp
      contact[:phone] = contact[:phone].empty? ? save_phone : contact[:phone]
    end
  end
end

def remove_contact
  print "Qual contato você deseja excluir? "
  name = gets.chomp

  @contacts.each do |contact|
    if contact[:name].downcase == (name.downcase)
      excluded = @contacts.index(contact)
      @contacts.delete_at(excluded)
      break
    end
  end
end

loop do
  puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
  opcion = gets.chomp.to_i
  case
  when opcion == 0 
    puts "Saindo da lista de contatos...\nAté breve!"
    break
  when opcion == 1
    all_contacts
  when opcion == 2
    add_contact
  when opcion == 3
    see_contact
  when opcion == 4
    edit_contact
  when opcion == 5
    remove_contact
  else
    puts "Opção inválida!\nPor favor, use uma opção existente."
  end
end
