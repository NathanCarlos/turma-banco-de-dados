const knex = require('./database');

const listaAlunos = async () => {
    const alunos = await knex.select('*').from('alunos');
    console.log(alunos);
};

const buscaAlunosPorId = async (id) => {
    return knex.select('*').from('alunos').where(`id`, id);
};

const adicionaAluno = async (aluno) => {
    const alunoInserido = await knex.insert(aluno).into('alunos');
    console.log(alunoInserido);
};

const atualizaAluno = async (aluno) => {
    return knex('alunos').where('id', aluno.id).update(aluno);
};

// adicionaAluno({
//     'id_curso': 1,
//     nome: 'Henrique',
//     endereco: 'Rua Seis, 210',
//     email: 'henrique2@gmail.com',
//     mensalidade: 300,
//     'maior_idade': true
// });

// listaAlunos();

buscaAlunosPorId(1).then((aluno) => {
    console.log(aluno);
}).catch((err) => {
    console.log(err);
});

// atualizaAluno({ id: 1, nome: 'Alberto da Silva Costa'}).then((aluno) => {
//     console.log(aluno);
// }).catch((err) => {
//     console.log(err);
// });