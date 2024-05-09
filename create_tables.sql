CREATE TABLE Product (
    prod CHAR(2) PRIMARY KEY,
    pname VARCHAR(100),
    price DECIMAL
);

CREATE TABLE Depot (
    dep CHAR(2) PRIMARY KEY,
    addr VARCHAR(100),
    volume INT
);

CREATE TABLE Stock (
    prod CHAR(2),
    dep CHAR(2),
    quantity INT,
    PRIMARY KEY (prod, dep),
    FOREIGN KEY (prod) REFERENCES Product(prod) ON DELETE CASCADE,
    FOREIGN KEY (dep) REFERENCES Depot(dep) ON DELETE CASCADE
);
