rule Highlight_Fake_Job_Frontend_Strings
{
    meta:
        description = "Detects frontend strings associated with the suspected fake Highlight recruitment portal"
        author = "Mounir Kouskous"
        case_id = "TI-2026-001"
        date = "2026-06-28"
        tlp = "CLEAR"

    strings:
        $s1 = "security_password" ascii nocase
        $s2 = "withdraw_record" ascii nocase
        $s3 = "table_withdrawal_usdc" ascii nocase
        $s4 = "table_referral_code" ascii nocase
        $s5 = "table_salary_list" ascii nocase
        $s6 = "highlight-global.xyz" ascii nocase
        $s7 = "deeplink.apihighlight.xyz" ascii nocase

    condition:
        3 of them
}
