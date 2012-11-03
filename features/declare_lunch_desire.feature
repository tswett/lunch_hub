Feature: declare lunch desire
    In order to meet up with others for lunch
    Users
    Should be able to announce their lunch desires

    Scenario: announce lunch desire
        When I announce my lunch desire
        Then my lunch desire should be public
