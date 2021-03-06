package cn.fjlcx.office.controller.webservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import cn.fjlcx.office.bean.HttpResult;
import cn.fjlcx.office.bean.NotePad;
import cn.fjlcx.office.bean.PageBean;
import cn.fjlcx.office.service.NotePadService;
import cn.fjlcx.office.utils.PageBeanUtil;

/**
 * Created by lcx on 2017/7/2 0002.
 */
@Controller
@RequestMapping("webservice/notepad")
public class NotePadInterface {
	@Autowired
	NotePadService mNotePadService;

	@RequestMapping(value = "getNotePad",method= RequestMethod.GET)
	@ResponseBody
	public HttpResult getNotePad(@RequestParam(value = "currentPage", required=true,defaultValue="1")Integer currentPage){
		int count = mNotePadService.countAllNotePad();
		PageBean<NotePad> pageBean = PageBeanUtil.setPageBean(count,10,currentPage);
		List<NotePad> list = mNotePadService.selectNotePadByPager(pageBean);
		pageBean.setList(list);
		return HttpResult.setReturnCode(100).addResult(pageBean);
	}

	@RequestMapping(value = "updateNotePad",method= RequestMethod.POST)
	@ResponseBody
	public HttpResult updateNotePad(@RequestBody NotePad notePad){
		notePad.setNpUpdatedate(System.currentTimeMillis());
		int val = 0;
		if(notePad.getNpId()==0){
			notePad.setNpAdddate(System.currentTimeMillis());
			notePad.setNpState(0);
			val = mNotePadService.insertNotePad(notePad);
		}else{
			val = mNotePadService.updateNotePad(notePad);
		}
		if(val == 1){
			return HttpResult.setReturnCode(100).addResult("");
		}else{
			return HttpResult.setReturnCode(102);
		}
	}

	@RequestMapping(value = "deleteNotePad",method= RequestMethod.GET)
	@ResponseBody
	public HttpResult deleteNotePad(@RequestParam(value = "npId", required=true)Integer npId){
		int val = mNotePadService.deleteNotePadById(npId);
		if(val==1){
			return HttpResult.setReturnCode(100);
		}else{
			return HttpResult.setReturnCode(102);
		}
	}
}
