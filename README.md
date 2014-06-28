# NAME

Business::PayPoint - PayPoint online payment

# SYNOPSIS

    use Business::PayPoint;

    my $bp = Business::PayPoint->new();
    $bp->set_credentials($mid, $vpn_pass, $remote_pass);

# DESCRIPTION

[https://www.paypoint.net/assets/guides/Gateway_Freedom.pdf](https://www.paypoint.net/assets/guides/Gateway_Freedom.pdf)

## METHODS

### set\_credentials

    $bp->set_credentials($mid, $vpn_pass, $remote_pass);
    # $bp->set_credentials('secpay', 'secpay', 'secpay');

### validateCardFull

    my %result = $bp->validateCardFull(
        'trans_id' => 'tran0001',
        'ip' => '127.0.0.1',
        'name' => 'Mr Cardholder',
        'card_number' => '4444333322221111',
        'amount' => '50.00',
        'expiry_date' => '0115',
        'billing' => "name=Fred+Bloggs,company=Online+Shop+Ltd,addr_1=Dotcom+House,addr_2=London+Road,city=Townville,state=Countyshire,post_code=AB1+C23,tel=01234+567+890,fax=09876+543+210,email=somebody%40secpay.com,url=http%3A%2F%2Fwww.somedomain.com",
        'options' => 'test_status=true,dups=false,card_type=Visa,cv2=123'
    );

### repeatCardFullAddr

### repeatCardFull

### refundCardFull

### releaseCardFull

### getReport

    my %report = $bp->getReport(
        report_type => 'XML-Report',
        cond_type   => 'TransId',
        condition   => $trans_id,
        currency    => 'GBP',
        predicate   => '',
        html        => 'false',
        showErrs    => 'false'
    );

### getTZReport

### threeDSecureEnrolmentRequest

### threeDSecureAuthorisationRequest

### performTransactionViaAlternatePaymentMethod

# AUTHOR

Fayland Lam <fayland@gmail.com>

# COPYRIGHT

Copyright 2014- Fayland Lam

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
