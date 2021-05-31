'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let Endereco = sequelize.define('Endereco',{
		idEndereco: {
			field: 'idEndereco',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},		
		cidade: {
			field: 'cidade',
			type: DataTypes.STRING,
			allowNull: false
		},
		estado: {
			field: 'estado',
			type: DataTypes.STRING,
			allowNull: false
		},
		cep: {
			field: 'cep',
			type: DataTypes.STRING,
			allowNull: false
		},
		rua: {
			field: 'rua',
			type: DataTypes.STRING,
			allowNull: false
		},
		numero: {
			field: 'numero',
			type: DataTypes.STRING,
			allowNull: false
		},
		bairro: {
			field: 'bairro',
			type: DataTypes.STRING,
			allowNull: false
		},
	}, 
	{
		tableName: 'endereco',
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return Endereco;
};
