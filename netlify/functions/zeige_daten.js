// netlify/functions/zeige_daten.js
const mysql = require('mysql2/promise');

exports.handler = async function (event, context) {
  try {
    const selectedName = event.queryStringParameters.name;

    // Verbindung zur MySQL-Datenbank herstellen
    const connection = await mysql.createConnection({
      host: 'https://github.com/ToadSmoke/Adventskalendar',
      user: 'root',
      password: '',
      database: 'adventskalendar',
    });

    // Daten aus der Datenbank abrufen
    const [rows, fields] = await connection.execute('SELECT end_name, date FROM persons WHERE name = ?', [selectedName]);

    // Überprüfen, ob Daten gefunden wurden
    if (rows.length > 0) {
      const data = {
        end_name: rows[0].end_name,
        date: rows[0].date,
      };

      return {
        statusCode: 200,
        body: JSON.stringify(data),
      };
    } else {
      return {
        statusCode: 404,
        body: JSON.stringify({ error: 'Keine Daten gefunden.' }),
      };
    }
  } catch (error) {
    console.error('Fehler:', error);
    return {
      statusCode: 500,
      body: JSON.stringify({ error: 'Internal Server Error' }),
    };
  }
};
