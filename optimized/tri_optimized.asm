std::piecewise_construct:
        .zero   1
memo:
        .zero   56
tribonacci(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     DWORD PTR [rbp-36], edi
        mov     eax, DWORD PTR [rbp-36]
        test    eax, eax
        je      .L21
        mov     eax, DWORD PTR [rbp-36]
        cmp     eax, 1
        jne     .L22
.L21:
        mov     eax, 0
        jmp     .L23
.L22:
        mov     eax, DWORD PTR [rbp-36]
        cmp     eax, 2
        jne     .L24
        mov     eax, 1
        jmp     .L23
.L24:
        mov     edi, OFFSET FLAT:memo
        call    std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::end()
        mov     QWORD PTR [rbp-32], rax
        lea     rax, [rbp-36]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:memo
        call    std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::find(int const&)
        mov     QWORD PTR [rbp-24], rax
        lea     rdx, [rbp-32]
        lea     rax, [rbp-24]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::__detail::operator!=(std::__detail::_Node_iterator_base<std::pair<int const, int>, false> const&, std::__detail::_Node_iterator_base<std::pair<int const, int>, false> const&)
        test    al, al
        je      .L25
        lea     rax, [rbp-36]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:memo
        call    std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int const&)
        mov     eax, DWORD PTR [rax]
        jmp     .L23
.L25:
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 1
        mov     edi, eax
        call    tribonacci(int)
        mov     ebx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 2
        mov     edi, eax
        call    tribonacci(int)
        add     ebx, eax
        mov     eax, DWORD PTR [rbp-36]
        sub     eax, 3
        mov     edi, eax
        call    tribonacci(int)
        add     ebx, eax
        lea     rax, [rbp-36]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:memo
        call    std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int const&)
        mov     DWORD PTR [rax], ebx
        lea     rax, [rbp-36]
        mov     rsi, rax
        mov     edi, OFFSET FLAT:memo
        call    std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::operator[](int const&)
        mov     eax, DWORD PTR [rax]
.L23:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC1:
        .string "Tribonacci for n=40: "
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     edi, 40
        call    tribonacci(int)
        mov     DWORD PTR [rbp-4], eax
        mov     esi, OFFSET FLAT:.LC1
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

__static_initialization_and_destruction_0():
        push    rbp
        mov     rbp, rsp
        mov     edi, OFFSET FLAT:memo
        call    std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >::unordered_map() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:memo
        mov     edi, OFFSET FLAT:_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED1Ev
        call    __cxa_atexit
        nop
        pop     rbp
        ret
_GLOBAL__sub_I_memo:
        push    rbp
        mov     rbp, rsp
        call    __static_initialization_and_destruction_0()
        pop     rbp
        ret
.LC0:
        .long   1065353216