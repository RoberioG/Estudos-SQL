-- Selecionar nome e sobrenome de todos os clientes cadastrados
SELECT person.FirstName, person.LastName
FROM person.person;

-- Selecionar os sobrenomes únicos dos clientes cadastrados
SELECT DISTINCT person.LastName
FROM person.person;

-- Selecionar somente clientes com sobrenome Miller
SELECT *
FROM person.person
WHERE LastName = 'miller'

-- Selecionar todos os produtos com preço maior que 1500,00 e menor que 5000,00
SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000;

-- Selecionar todos os produtos com cor diferente de vermelho
SELECT *
FROM Production.Product
WHERE Color <> 'red';

-- A equipe de produção de produtos precisa do nome de todas as peças que pesam (weight) mais que 500kg mas não mais que 700kg para inspeção
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

-- Foi pedido pelo marketing um relação de todos os empregados(employees) que são casados (single=solteiro, married =casado) e são asalariados(salaried)
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1

-- Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança!
-- (você vai ter que usar a tabela person.person e depois a tabela person.emailaddress)
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = '26'