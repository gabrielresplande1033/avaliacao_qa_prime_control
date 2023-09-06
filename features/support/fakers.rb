require "faker"

def faker_email
    return "#{Faker::Internet.user_name}@gmail.com"  
end

def faker_nome_completo
    return "#{Faker::Name.first_name} #{Faker::Name.middle_name} #{Faker::Name.last_name}"
end

def faker_idade
    return "#{Faker::Number.within(range: 18..90)}"
end

def faker_profissao
    return "#{Faker::Job.title}"
end

def faker_random_int
    return Faker::Number.number(digits: 12)
end

def faker_random_genero
    return "#{Faker::Gender.binary_type}"
end