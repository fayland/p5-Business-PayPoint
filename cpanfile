requires 'perl', '5.008005';

# requires 'Some::Module', 'VERSION';

requires 'XML::Writer';
requires 'SOAP::Lite';
requires 'URI::Escape';

on test => sub {
    requires 'Test::More', '0.96';
};
