'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let usuario_endereco = sequelize.define('usuario_endereco',{
		fkEndereco: {
			field: 'fkEndereco',
			type: DataTypes.INTEGER,
			primaryKey: true,
		},		
		fkUsuario: {
			field: 'fkUsuario',
			type: DataTypes.INTEGER,
			primaryKey: true,
		},
	}, 
	{
		tableName: 'usuario_endereco',
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return usuario_endereco;
};
