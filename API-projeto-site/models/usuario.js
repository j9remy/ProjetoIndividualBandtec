	'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let Usuario = sequelize.define('Usuario',{
		idUsuario: {
			field: 'idUsuario',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},		
		nome: {
			field: 'nome',
			type: DataTypes.STRING,
			allowNull: false
		},
		CPF: {
			field: 'CPF',
			type: DataTypes.STRING,
			allowNull: false
		},
		dataNasc: {
			field: 'dataNasc',
			type: DataTypes.STRING,
			allowNull: false
		},
		sexo: {
			field: 'sexo',
			type: DataTypes.STRING,
			allowNull: false
		},
		email: {
			field: 'email',
			type: DataTypes.STRING,
			allowNull: false
		},
		senha: {
			field: 'senha',
			type: DataTypes.STRING,
			allowNull: false
		},
		telefone: {
			field: 'telefone',
			type: DataTypes.STRING,
			allowNull: false
		},
	}, 
	{
		tableName: 'Usuario',
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return Usuario;
};
