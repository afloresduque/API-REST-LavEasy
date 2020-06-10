import mysql.connector
from mysql.connector import DatabaseError

import logging

db=None
cursor=None

def init():
    global db, cursor
    # Al conectarnos indicamos tambien la base de datos con la
    # la que queremos trabajar
    db = mysql.connector.connect(
        host="lis2dam.mysql.pythonanywhere-services.com",
        user="lis2dam",
        passwd="contrapythonanywhere",
        database="lis2dam$bd_simbolos"
    )

    # Para operar con la base de datos utilizaremos un Cursor
    cursor = db.cursor()
    if (cursor is None):
        raise Exception("No hay cursor")


# Comprueba que el formato de los elementos sea el correcto
def checkValidItem(item):
    if 'nombre' not in item:
        raise Exception('No existe el campo nombre en item')
    if 'descripcion' not in item:
        raise Exception('No existe el campo descripcion en item')


# Comprueba que exista el indice. En otro caso lanza excepcion
def checkExists(idx):
    cursor.execute('select id from simbolos where id="{0}" limit 1'.format(idx))
    if cursor.rowcount==0:
        raise Exception('No existe el indice {0} al que intenta acceder'.format(idx))


# Devuelve una lista con todos los elementos
def items():
    cursor.execute('select * from simbolos')
    simbolos = cursor.fetchall()
    milista=[]
    for simbolo in simbolos:
        item={
            "id": simbolo[0],
            "nombre": simbolo[1],
            "descripcion": simbolo[2]
        }
        milista.append(item)
    return milista


# Devuelve el elemento situado en idx
def item(idx):
    sql='select * from simbolos where id="{0}" limit 1'.format(idx)
    logging.debug('simbolo_model.item <{0}>'.format(sql))
    cursor.execute(sql)
    simbolo=cursor.fetchone()
    item={
        "id": simbolo[0],
        "nombre": simbolo[1],
        "descripcion": simbolo[2]
    }
    if simbolo is None:
        raise Exception('No existe el indice {0} al que intenta acceder'.format(idx))
    return item
