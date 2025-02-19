
{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Integrator (*integrator*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : {REDUND_UNREPLICABLE} REAL; (*vhod*)
	END_VAR
	VAR_OUTPUT
		out : {REDUND_UNREPLICABLE} REAL; (*vihod*)
	END_VAR
	VAR
		dt : {REDUND_UNREPLICABLE} REAL; (*��� �������*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Motor (*motor*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		u : {REDUND_UNREPLICABLE} REAL; (*������� ����������*)
	END_VAR
	VAR_OUTPUT
		w : {REDUND_UNREPLICABLE} REAL; (*������� ��������*)
		phi : {REDUND_UNREPLICABLE} REAL; (*���������*)
	END_VAR
	VAR
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*����������*)
		Tm : {REDUND_UNREPLICABLE} REAL; (*��-��� ����������*)
		Ke : {REDUND_UNREPLICABLE} REAL; (*���������� ���*)
		dt : {REDUND_UNREPLICABLE} REAL; (*��� �������*)
	END_VAR
END_FUNCTION_BLOCK

{REDUND_ERROR} {REDUND_UNREPLICABLE} FUNCTION_BLOCK FB_Regulator (*regulator*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		e : {REDUND_UNREPLICABLE} REAL; (*��������������� ����� �������� ������������ � �������� ��������� ��������*)
	END_VAR
	VAR_OUTPUT
		u : {REDUND_UNREPLICABLE} REAL; (*���������� ���������� �� ���� ���*)
	END_VAR
	VAR
		k_p : {REDUND_UNREPLICABLE} REAL; (*�������*)
		k_i : {REDUND_UNREPLICABLE} REAL; (*��������*)
		integrator : {REDUND_UNREPLICABLE} FB_Integrator; (*����������*)
		iyOld : {REDUND_UNREPLICABLE} REAL; (*�������� ����������� ��������*)
		max_abs_value : {REDUND_UNREPLICABLE} REAL; (*������� ����� �����������*)
		dt : {REDUND_UNREPLICABLE} REAL; (*��� �������*)
		e_kp : {REDUND_UNREPLICABLE} REAL; (* ������������� �������� ����������*)
	END_VAR
END_FUNCTION_BLOCK
