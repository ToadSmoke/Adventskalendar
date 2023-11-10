<?php
$host = "localhost";
$name = "adventskalender";
$user = "root";
$passwort = "";

try {
    $connection = new PDO("mysql:host=$host;dbname=$name", $user, $passwort);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Holen Sie die Daten aus der Datenbank basierend auf dem übergebenen Namen
    if (isset($_GET['name'])) {
        $selectedName = $_GET['name'];
        $sql = "SELECT end_name , date FROM persons WHERE name = :selectedName";
        $stmt = $connection->prepare($sql);
        $stmt->bindParam(':selectedName', $selectedName, PDO::PARAM_STR);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        // Geben Sie die Daten im JSON-Format aus
        echo json_encode($result);
    } else {
        echo json_encode(['error' => 'Kein Name ausgewählt.']);
    }
} catch (PDOException $e) {
    echo json_encode(['error' => 'SQL Error: ' . $e->getMessage()]);
}
?>
