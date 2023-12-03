tribonacci(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        mov     DWORD PTR [rbp-20], edi
        cmp     DWORD PTR [rbp-20], 0
        je      .L2
        cmp     DWORD PTR [rbp-20], 1
        jne     .L3
.L2:
        mov     eax, 0
        jmp     .L4
.L3:
        cmp     DWORD PTR [rbp-20], 2
        jne     .L5
        mov     eax, 1
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 1
        mov     edi, eax
        call    tribonacci(int)
        mov     ebx, eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 2
        mov     edi, eax
        call    tribonacci(int)
        add     ebx, eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 3
        mov     edi, eax
        call    tribonacci(int)
        add     eax, ebx
.L4:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC0:
        .string "Tribonacci for n=40: "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, 40
        call    tribonacci(int)
        mov     DWORD PTR [rbp-4], eax
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     eax, 0
        leave
        ret